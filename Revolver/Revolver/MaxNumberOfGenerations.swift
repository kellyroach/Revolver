
/// Terminate the genetic algorithm after a given number of generations is created.
public class MaxNumberOfGenerations<Chromosome: ChromosomeType>: TerminationCondition<Chromosome> {
    
    /// Number of generations to create.
    public let generations: Int
    
    /**
     Terminate the genetic algorithm after a given number of generations is created.
     
     - parameter generations: Number of generations to create.
     
     - returns: New termination condition.
     */
    public init(_ generations: Int) {
        self.generations = generations
        super.init()
    }
    
    public override func shouldTerminate(population: MatingPool<Chromosome>) -> Bool {
        return population.currentGeneration >= generations
    }
    
}