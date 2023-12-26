abstract class BaseDataMapper<M, E> {
  /// Mapper model to entity
  E toEntity(M model);

  /// Mapper list models to list entities
  List<E> toListEntity(List<M>? models) {
    return models?.map((m) => toEntity(m)).toList() ?? List<E>.empty();
  }
}

mixin OptionDataMapper<M, E> on BaseDataMapper<M, E> {
  /// Mapper entity to model
  M toModel(E entity);
}
