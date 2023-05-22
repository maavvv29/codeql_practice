// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.Type

module Generated {
  class AnyFunctionType extends Synth::TAnyFunctionType, Type {
    /**
     * Gets the result of this function type.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateResult() {
      result =
        Synth::convertTypeFromRaw(Synth::convertAnyFunctionTypeToRaw(this)
              .(Raw::AnyFunctionType)
              .getResult())
    }

    /**
     * Gets the result of this function type.
     */
    final Type getResult() { result = this.getImmediateResult().resolve() }

    /**
     * Gets the `index`th parameter type of this function type (0-based).
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateParamType(int index) {
      result =
        Synth::convertTypeFromRaw(Synth::convertAnyFunctionTypeToRaw(this)
              .(Raw::AnyFunctionType)
              .getParamType(index))
    }

    /**
     * Gets the `index`th parameter type of this function type (0-based).
     */
    final Type getParamType(int index) { result = this.getImmediateParamType(index).resolve() }

    /**
     * Gets any of the parameter types of this function type.
     */
    final Type getAParamType() { result = this.getParamType(_) }

    /**
     * Gets the number of parameter types of this function type.
     */
    final int getNumberOfParamTypes() { result = count(int i | exists(this.getParamType(i))) }

    /**
     * Holds if this type refers to a throwing function.
     */
    predicate isThrowing() {
      Synth::convertAnyFunctionTypeToRaw(this).(Raw::AnyFunctionType).isThrowing()
    }

    /**
     * Holds if this type refers to an `async` function.
     */
    predicate isAsync() {
      Synth::convertAnyFunctionTypeToRaw(this).(Raw::AnyFunctionType).isAsync()
    }
  }
}
