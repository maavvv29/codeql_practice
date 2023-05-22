// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.ArchetypeType
import codeql.swift.elements.decl.OpaqueTypeDecl

module Generated {
  /**
   * An opaque type, that is a type formally equivalent to an underlying type but abstracting it away.
   *
   * See https://docs.swift.org/swift-book/LanguageGuide/OpaqueTypes.html.
   */
  class OpaqueTypeArchetypeType extends Synth::TOpaqueTypeArchetypeType, ArchetypeType {
    override string getAPrimaryQlClass() { result = "OpaqueTypeArchetypeType" }

    /**
     * Gets the declaration of this opaque type archetype type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    OpaqueTypeDecl getImmediateDeclaration() {
      result =
        Synth::convertOpaqueTypeDeclFromRaw(Synth::convertOpaqueTypeArchetypeTypeToRaw(this)
              .(Raw::OpaqueTypeArchetypeType)
              .getDeclaration())
    }

    /**
     * Gets the declaration of this opaque type archetype type.
     */
    final OpaqueTypeDecl getDeclaration() { result = this.getImmediateDeclaration().resolve() }
  }
}
