extension Bool: NodeConvertible {
    public init(node: Node) throws {
        guard let bool = node.bool else {
            throw NodeError.unableToConvert(input: node, expectation: "\(Bool.self)", path: [])
        }
        self = bool
    }

    public func makeNode(in context: Context?) -> Node {
        return .bool(self, in: context)
    }
}
