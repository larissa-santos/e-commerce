<?php

namespace App\Repositories;

use App\Models\Products;

class ProductsRepository 
{
    const DEFAULT_PAGINATION = 10;
	private $model;

	public function __construct(Products $model)
	{
		$this->model = $model;
	}

	public function findAll(array $filters = [])
    {
        $query = $this->model->newQuery();
        return $query->paginate($filters['limit'] ?? self::DEFAULT_PAGINATION);
    }

    public function findById(string $id): Products
    {
        return $this->model->findOrFail($id);
    }
}