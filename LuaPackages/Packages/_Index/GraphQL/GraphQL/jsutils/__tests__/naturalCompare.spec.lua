-- ROBLOX upstream: https://github.com/graphql/graphql-js/blob/1951bce42092123e844763b6a8e985a8a3327511/src/jsutils/__tests__/naturalCompare.js
local naturalCompare = require(script.Parent.Parent.naturalCompare).naturalCompare

return function()
	describe("naturalCompare", function()
		it("Handles empty strings", function()
			expect(naturalCompare("", "")).to.equal(0)
			expect(naturalCompare("", "a")).to.equal(-1)
			expect(naturalCompare("", "1")).to.equal(-1)
			expect(naturalCompare("a", "")).to.equal(1)
			expect(naturalCompare("1", "")).to.equal(1)
		end)
		it("Handles strings of different length", function()
			expect(naturalCompare("A", "A")).to.equal(0)
			expect(naturalCompare("A1", "A1")).to.equal(0)
			expect(naturalCompare("A", "AA")).to.equal(-1)
			expect(naturalCompare("A1", "A1A")).to.equal(-1)
			expect(naturalCompare("AA", "A")).to.equal(1)
			expect(naturalCompare("A1A", "A1")).to.equal(1)
		end)
		it("Handles numbers", function()
			expect(naturalCompare("0", "0")).to.equal(0)
			expect(naturalCompare("1", "1")).to.equal(0)
			expect(naturalCompare("1", "2")).to.equal(-1)
			expect(naturalCompare("2", "1")).to.equal(1)
			expect(naturalCompare("2", "11")).to.equal(-1)
			expect(naturalCompare("11", "2")).to.equal(1)
		end)
		it("Handles numbers with leading zeros", function()
			expect(naturalCompare("00", "00")).to.equal(0)
			expect(naturalCompare("0", "00")).to.equal(-1)
			expect(naturalCompare("00", "0")).to.equal(1)
			expect(naturalCompare("02", "11")).to.equal(-1)
			expect(naturalCompare("11", "02")).to.equal(1)
			expect(naturalCompare("011", "200")).to.equal(-1)
			expect(naturalCompare("200", "011")).to.equal(1)
		end)
		it("Handles numbers embedded into names", function()
			expect(naturalCompare("a0a", "a0a")).to.equal(0)
			expect(naturalCompare("a0a", "a9a")).to.equal(-1)
			expect(naturalCompare("a9a", "a0a")).to.equal(1)
			expect(naturalCompare("a00a", "a00a")).to.equal(0)
			expect(naturalCompare("a00a", "a09a")).to.equal(-1)
			expect(naturalCompare("a09a", "a00a")).to.equal(1)
			expect(naturalCompare("a0a1", "a0a1")).to.equal(0)
			expect(naturalCompare("a0a1", "a0a9")).to.equal(-1)
			expect(naturalCompare("a0a9", "a0a1")).to.equal(1)
			expect(naturalCompare("a10a11a", "a10a11a")).to.equal(0)
			expect(naturalCompare("a10a11a", "a10a19a")).to.equal(-1)
			expect(naturalCompare("a10a19a", "a10a11a")).to.equal(1)
			expect(naturalCompare("a10a11a", "a10a11a")).to.equal(0)
			expect(naturalCompare("a10a11a", "a10a11b")).to.equal(-1)
			expect(naturalCompare("a10a11b", "a10a11a")).to.equal(1)
		end)
		it("Handles two letter comaprisons", function()
			expect(naturalCompare("ax", "ax")).to.equal(0)
			expect(naturalCompare("ax", "ay")).to.equal(-1)
			expect(naturalCompare("ay", "ax")).to.equal(1)
			expect(naturalCompare("ax", "az")).to.equal(-1)
			expect(naturalCompare("az", "ax")).to.equal(1)
		end)
	end)
end
