/**
 * Surfaces endpoints that are sinks with high confidence, for use as positive examples in the prompt.
 *
 * @name Positive examples (framework mode)
 * @kind problem
 * @severity info
 * @id java/ml/extract-automodel-framework-positive-examples
 * @tags internal extract automodel framework-mode positive examples
 */

private import AutomodelFrameworkModeCharacteristics
private import AutomodelEndpointTypes
private import AutomodelSharedUtil

from
  Endpoint endpoint, SinkType sinkType, FrameworkModeMetadataExtractor meta, string package,
  string type, boolean subtypes, string name, string signature, string input, string parameterName
where
  // Exclude endpoints that have contradictory endpoint characteristics, because we only want examples we're highly
  // certain about in the prompt.
  not erroneousEndpoints(endpoint, _, _, _, _, false) and
  meta.hasMetadata(endpoint, package, type, subtypes, name, signature, input, parameterName) and
  // Extract positive examples of sinks belonging to the existing ATM query configurations.
  CharacteristicsImpl::isKnownSink(endpoint, sinkType)
select endpoint,
  sinkType + "\nrelated locations: $@, $@." + "\nmetadata: $@, $@, $@, $@, $@, $@, $@.", //
  CharacteristicsImpl::getRelatedLocationOrCandidate(endpoint, MethodDoc()), "MethodDoc", //
  CharacteristicsImpl::getRelatedLocationOrCandidate(endpoint, ClassDoc()), "ClassDoc", //
  package.(DollarAtString), "package", //
  type.(DollarAtString), "type", //
  subtypes.toString().(DollarAtString), "subtypes", //
  name.(DollarAtString), "name", //
  signature.(DollarAtString), "signature", //
  input.(DollarAtString), "input", //
  parameterName.(DollarAtString), "parameterName" //
