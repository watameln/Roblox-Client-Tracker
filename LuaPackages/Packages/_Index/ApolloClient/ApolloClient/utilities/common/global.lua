-- ROBLOX deviation: this was to support webpack logic, logic which is needed in luau
local exports = {}
--
local _maybe = require(script.Parent.maybe).maybe
-- ROBLOX deviation: Roblox doesn't have a concept of window or process.env. _G is the replacement.
--[[
export default (
  maybe(() => globalThis) ||
  maybe(() => window) ||
  maybe(() => self) ||
  maybe(() => global) ||
  maybe(() => Function("return this")())
) as typeof globalThis & {
  __DEV__: typeof __DEV__;
};
]]

exports.default = _G

return exports
