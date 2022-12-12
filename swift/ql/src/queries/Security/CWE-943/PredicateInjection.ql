/**
 * @name Predicate built from user-controlled sources
 * @description Building a NSPredicate from user-controlled sources may lead to attackers
 *              changing the predicate's intended logic.
 * @kind path-problem
 * @problem.severity error
 * @precision high
 * @id swift/predicate-injection
 * @tags security
 *       external/cwe/cwe-943
 */

import swift
import codeql.swift.dataflow.DataFlow
import codeql.swift.security.PredicateInjectionQuery
import DataFlow::PathGraph

from DataFlow::PathNode source, DataFlow::PathNode sink
where any(PredicateInjectionConf c).hasFlowPath(source, sink)
select sink.getNode(), source, sink, "$@", source.getNode(), ""
