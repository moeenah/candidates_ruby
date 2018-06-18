def find(id)
 for candidate in @candidates do
  if (candidate[:id] == id)
    return candidate
  end
end
return nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] > 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates)
  arr = [];
  for candidate in @candidates do
    if (candidate[:years_of_experience] > 2 && candidate[:github_points] > 100 && (candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')) && candidate[:date_applied] > 15.days.ago.to_date  && candidate[:age] > 17)
      arr.push(candidate)
    end
  end
    return arr if arr.length > 1
    return 'no candidate found'
end

def ordered_by_qualifications(candidates)
 candidates.sort_by! {|obj| [-obj[:years_of_experience], -obj[:github_points]]}
 return candidates
end