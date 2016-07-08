require('rspec')
require('definition')

describe(Definition) do

  describe("#definition") do
    it("lets you give it a definition") do
      test_definition = Definition.new("an intense feeling of deep affection")
      expect(test_definition.definition()).to(eq("an intense feeling of deep affection"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a definition to the array of saved definitions") do
      test_definition = Definition.new("an intense feeling of deep affection")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved definitions") do
      Definition.new("an intense feeling of deep affection").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe("#id") do
    it("returns the id of the definition") do
      test_definition = Definition.new("an intense feeling of deep affection")
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a definition by its id number") do
      test_definition = Definition.new("an intense feeling of deep affection")
      test_definition.save()
      test_definition2 = Definition.new("two friends")
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end
end
