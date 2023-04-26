local CorePackages = game:GetService("CorePackages")
local Package = require(CorePackages.Packages.React)

export type Object = { [string]: any }

export type Binding<T> = Package.Binding<T>
export type BindingUpdater<T> = Package.BindingUpdater<T>
export type LazyComponent<T, P> = Package.LazyComponent<T, P>
export type StatelessFunctionalComponent<P> = Package.StatelessFunctionalComponent<P>
export type ComponentType<P> = Package.ComponentType<P>
export type AbstractComponent<Config, Instance> = Package.AbstractComponent<Config, Instance>
export type ElementType = Package.ElementType
export type Element<C> = Package.Element<C>
export type Key = Package.Key
export type Ref<ElementType> = Package.Ref<ElementType>
export type Node = Package.Node
export type Context<T> = Package.Context<T>
export type ElementProps<C> = Package.ElementProps<C>
export type ElementConfig<T> = Package.ElementConfig<T>
export type ElementRef<C> = Package.ElementRef<C>
export type ComponentClass<P> = Package.ComponentClass<P>
export type PureComponent<Props, State = nil> = Package.PureComponent<Props, State>
export type ReactElement<Props = Object, ElementType = any> = Package.ReactElement<Props, ElementType>
export type ReactChild = Package.ReactChild
export type FC<P> = Package.FC<P>
export type ReactNode = Package.ReactNode
export type React_AbstractComponent<Props, Instance> = Package.React_AbstractComponent<Props, Instance>
export type React_Component<Props, State> = Package.React_Component<Props, State>
export type React_ComponentType<P> = Package.React_ComponentType<P>
export type React_Context<T> = Package.React_Context<T>
export type React_Element<ElementType> = Package.React_Element<ElementType>
export type React_ElementType = Package.React_ElementType
export type React_Node = Package.React_Node

return Package
