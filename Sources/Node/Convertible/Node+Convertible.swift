extension Schema: NodeConvertible { // Can conform to both if non-throwing implementations
    public init(node: Node) {
        self = node.schema
    }

    public func makeNode(in context: Context = EmptyNode) -> Node {
        return Node(self)
    }
}
